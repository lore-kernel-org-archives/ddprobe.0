Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF054AA8
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646760385;
	h=To:Subject:From:Message-Id:Date;
	bh=/7SaR2PU2bTvsXYve5+9b5189JSZnx4X0OoRUiDz6pM=;
	b=HJ5FOLH23CE40AGsGSD7OHHs1tD0cETkK+sROiI+j6/UUKSPR/v48E4uD4gQXHDn
	uMCoYEN6oOM93Lw0q2GFS1lFgYA5QJc3SlqeeXxug4zLT5OmT7AqeatVzfY/BONQ59U
	2sopyctKb/BJKp9tGTFEdyI7YEbRKagle5odKdbI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646760385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/7SaR2PU2bTvsXYve5+9b5189JSZnx4X0OoRUiDz6pM=;
	b=c9BnnKvtunkfnrVLGal6I7DwLV++t1skQ2YTcI8fL+Lyikh0iWmUX/AlCq8Rm24o
	eH5xdH1mFmJ0cwRSafOdgpl2lD74RC6dcrvodLoReXjsiqTXlBrEb7xTyqWOsirfs2K
	ts8U6Ou9o8HrpvCYRMD12y7YxyRRZiKQtUFNZ+uk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6a91592e-f1a29748-c5d4-4e69-aac8-36185e8b89fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af5755390e942c716c82d9117c7e1cc0a24dd8c0b4f38da82edd42ca5a7787da
Date: Tue, 8 Mar 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646760384
