Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F29817
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 13:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658065012;
	h=To:Subject:From:Message-Id:Date;
	bh=asCwxa22YkUcUbkLOVqfxyOKMkF52F+bcUok6nmziLI=;
	b=diKVAsRPS8wTjmn4rgi6HwPmBTY8NLoY1LIY4wF/niuHfyEuf0zZZOPmCzWC5di+
	6b+XGsgVFHJKNfFTfHc6pm1+YG3Vm3f7BPAdm8CzBq06t+UErscLuo4Z0FtB7a8PIJ6
	lKWJxD8BGF7fCa/VI94SNKz/CNHAL3S6h6h8TeZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658065012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=asCwxa22YkUcUbkLOVqfxyOKMkF52F+bcUok6nmziLI=;
	b=B4nBsm3+jQNIQETi5HwpmZHOzqJSfHgKDABcSpL+1Nm50eHtxy+MnCHwt3au3jmd
	bXvd2cTFa4vusY1heo+2jL3WrbnFnIJdDC/kFcZc5kjINbr+X3FF5rxWWvzvlPFoz9f
	YqD7cMN2qgLnGsx2FFOW0zgokJW3TH9eH5TrTID0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820c6046b2-0b8c09f7-47e1-4b99-9605-8854611c69d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0937d4964d47f2a8d84494697e8f40d9b4b53837b5a9cc52280d67201199ff4d
Date: Sun, 17 Jul 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658065012
