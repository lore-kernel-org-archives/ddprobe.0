Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A547C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 20:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656189412;
	h=To:Subject:From:Message-Id:Date;
	bh=p8/LAfoS2e7K7G2HkqUCnoehVi5sD1nbK3xPa7x+xZE=;
	b=lXZbrS1yhMS37vRCQCzh1hdad8zfcqALGoSQ/RvSl66ACSm61ncZhVHpu5FcBcrs
	lSEEW7OjfEVBEICNPRTPob5zdbfbPChu2av5MczjQWSxLCLJx0A2lQEECQ25Kf43a8I
	ni4xA4+9N5LQBsAdGs/7sYkHth4S3fCe095uOxdw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656189412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p8/LAfoS2e7K7G2HkqUCnoehVi5sD1nbK3xPa7x+xZE=;
	b=Z8R90xGiOcn3N5Pa/9ATD1YxZ6UBW+Wkal4OBEcQ7TF1CT5/7vlYWNhPuT7PwK9U
	bgGok4sa+yKzgzJ/gFQTSy8gvGDFJxy94R4dl51CFNZEClzud0vHatzj9sD2WWYLFHI
	AHFYkw2/9WHeJKqdV+kso/GVWWMa5OognMz5NZ1Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819c94e3c2-7cc76340-b2c6-455f-a78a-7a6fceabd9a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7bb2d0bf639fdb342122122370a777adecb49c6da9f04629dc91ff3692792f6
Date: Sat, 25 Jun 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656189412
