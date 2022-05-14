Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F032577
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 17:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652549159;
	h=To:Subject:From:Message-Id:Date;
	bh=9jySNkw5QcBX+wV2tZfW/juWN/+1Hiyj8iS7xRtAX6Q=;
	b=Xf/LXjX4Rc0OA89Rcr2cSKyYG9EBP+O2tUrXAmHRkQWHcZFbMZ7FWn916snnAyPn
	UQ6mQf1kO3WmEPGTozEHrNFndb5LuvdyjSc1KrcOG97oiBHu+2czkadnjU9WkIr3GW9
	4VETPybGy8NDqrt2udmfzwi7vAed5olWaV1BCOuE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652549159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9jySNkw5QcBX+wV2tZfW/juWN/+1Hiyj8iS7xRtAX6Q=;
	b=AA3TMHxOsb/nyamWcuVPQ2CUl/AUmsCmQzE68XhYNrVMQRkRln/UY4D5oB4QK7kF
	AFNfUHFH8jiwUoij8Ae/PKYyaD26lp5OmBWV2hbORR1Ol78tGCqqUJPEPR7NXe+QQh3
	PIRgIRPEtJAS5ZJW3M1waETcR27GOL02vm+ATGz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c39b0966-ee767bd3-bd02-42ab-818e-50640380eee0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0982fbf41898932cbe0312faf447638a756e3799115fd6b67fd9da7c7f7792ae
Date: Sat, 14 May 2022 17:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652549159
