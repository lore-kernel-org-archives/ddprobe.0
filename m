Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B26369
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 02:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651716298;
	h=To:Subject:From:Message-Id:Date;
	bh=hl2gPm+OkCtby62DzktNuLDljh5nemP2TMPN7VPnPDM=;
	b=J8cgAEw8SKFKHSdWN2Gdg5KsAGVxOUW+YFS5VzaKqSTdXFfahjFt1EdcjZWUz84G
	Ay+OwP+ARVaN2qaTgGlYvxoSaHrMnqi5p+RPr0430phEI14uF2JcJ7Oy0FAE+CyRJMP
	oH8U1qI23elvvArUeLtYV1x5OLGq2ujUDiR3IfJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651716298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hl2gPm+OkCtby62DzktNuLDljh5nemP2TMPN7VPnPDM=;
	b=dkkA37yrn2oneZAa++peaBY+EOayzG6uMMhNOf481fzzBFCx5hATYvVOYjsX19mF
	m0nBNW+9f4eYu6PKfJgFcudMt/S7IyurJDHHgHgDi+9rTDG/aoOdL6DQu8lFNaZLug+
	1ID8EiBafSGraIJ7FKU0w8EsX3kqU61zhkAEnEC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018091f69604-fc420322-7991-4b1d-88f9-34b468ef7d1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb833e79eb8aa9b63abfba2499da31c459dfe2e6d9df03abc71bdfae96d20ba9
Date: Thu, 5 May 2022 02:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651716298
