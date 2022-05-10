Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C1E3D9F
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 23:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652225279;
	h=To:Subject:From:Message-Id:Date;
	bh=MRmKpqiTyzMMFmSO1XS/zDnFeiJ3u20dOREBPBMg6RY=;
	b=U9qrz93RA4tLQA/ldbmDdav/A2IiDG5yGjqRcqTz+yPDOQKIMZysjx0vdZpeP0nC
	BYJAE2YfWhCN4xIRy2QlQyHF+hH/ExgsaQnocJbILpWN1F0XXUR4v8VyJ1MicebsOn0
	qKBsaIHXskUsJiHrtM03+HiGJQsKwxk6W8NXBhkg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652225279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MRmKpqiTyzMMFmSO1XS/zDnFeiJ3u20dOREBPBMg6RY=;
	b=NGIpk6SJljSXZvwqA/CO37x9gc9M3EdP9NWOEbl3ASWs5QBtpRurMq82yHY9o89X
	7zmJaq+e+ZZjHwLTVKNTY26REq5U9PIJUAALyVgy2wsQKitfy8IaeUicDB8w7Xqj3Mw
	1fgh4s/GU9nDdQx6RN3ku/uygJT9bUSwkyMGvmjY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b04d05af-2cf150fc-1f06-4b1c-8a39-32d3e35da799-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec979d241475eda8208368abd6b5237cb871c6b842c8e90168c50fed5d51927a
Date: Tue, 10 May 2022 23:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652225279
