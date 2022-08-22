Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE81369
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661135452;
	h=To:Subject:From:Message-Id:Date;
	bh=lAC/Nk+XROG1z4cfNWSyzBZirze6hMjuBiMc4pXd0jk=;
	b=XVT3epHQg94vCgmVZeKaR6pphOt1Goo9ADiF+kV81qehXyYXEdy5S4JjyTEn3OLh
	VOl2eTiNeu0d5+225lWWcEFCOQZcJUniFFOaYOnhogI8+pDszaK6iwyBRpcBT7klZnv
	A+eX+RIkOCWYsUQslWW/bk7BRBuyR9d1TsbNGrjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661135452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lAC/Nk+XROG1z4cfNWSyzBZirze6hMjuBiMc4pXd0jk=;
	b=OFDzyhODsCE0c/UyTwhUTiBoPQ2KdC/xKG2EytDC4j5Q5rVFbAs+wnuu8k//aGqJ
	ZZDs/ugcOnY607H705/il7dv7+IWvPtzuZCvRjXlaS3OievDnIQAzB8HzRHjZC0A+41
	myjJ5qjf6bEVvLq7WA3q9iv33NKjj1gpF5rrjg/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c363794d-2438649b-4f18-42d8-b654-b4e06c63e3fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ec3d9915c2789450e9a52cc1b2c4b4e8c7a88bb03770613a4d3e534666412a9
Date: Mon, 22 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661135452
