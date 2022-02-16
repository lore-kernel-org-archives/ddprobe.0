Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CAF91844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 02:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644977484;
	h=To:Subject:From:Message-Id:Date;
	bh=Wq1eFhY6C+HfERkgRP3uBfLETwxG49bku3cneccKA9U=;
	b=Jrl49zKI4gW2gZVNOPlfBJTacznHlQnS3fTt3nOIYo8yfUsU/zuTXBoOaNF5a8so
	tRJ/m+FOBvsA7xTAw46i1H7V1g5rG06R4ckeflzQOGy4/9YWhIW2TSGa+1rYGU91q/V
	XO4SjinMXHe2SSXEKhq+wuwA9Kl5TFvyu9+11kjg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644977484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wq1eFhY6C+HfERkgRP3uBfLETwxG49bku3cneccKA9U=;
	b=gSOpG0gj5mCuPikAF/lksYsApPUDgMuqZk4bXbWOzR6WQJ4JhA60zcckD0IFjC5d
	PHQ1r0gupqMXJ21yyhB6agAEhgPzxYZW1+ClVFclozm67bdhhWuH6pWBuEyQQ/A0vKS
	2Je/ZsflGwrvmVCtWQrOIvsT9Z7H0H3BqzMaTxb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f004c73d0-1c58a2c4-b481-4a1a-af97-21a5cb25b567-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcf23b8a1849e36543bff01a163ce3b77926ba66b11de42006390e643191fc22
Date: Wed, 16 Feb 2022 02:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644977484
