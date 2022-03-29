Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFFB20F4
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 06:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648535098;
	h=To:Subject:From:Message-Id:Date;
	bh=j/Dv0X4G3ZlOAJPy7i8ABmM+1qRN7O1la1oGPE9soZ4=;
	b=g+M+BLNMf0C6exTHvgTjZWMIp05TjarhhWNVjUrN0yzFYPy3xQKERacTnUFXZeyF
	XNUCxud5QVdVkBsSNh1FyP7o3xe8b5Akb78qjQa6lp2yFMv2vh6qQdQRekcIG4actF5
	9YoTwGgZLpCr1UnN2MTwZS7ZKE7D/iY6ebHy9WoA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648535098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j/Dv0X4G3ZlOAJPy7i8ABmM+1qRN7O1la1oGPE9soZ4=;
	b=gksOCidzixrJOZn1JNh+HkTlB2Ob3EGNgDrG+vOlOAVhwuiafbP/L6k1s2np9YIK
	a0cZnk7gBuBlKTNtz/5n8qQ9KrlLuMM5y2NQjhhaUkyPOV7gSWG4Xql3QpZbF4CSatb
	i5yR9Eml0AOPxXwOWQfAYTfcoZys2/UBgYCJlH44=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd459539e-0d8b9e85-5619-4b68-8ecf-7fc6825adb70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 165a8e995c4e2f802c311fb1ef61b01861a9607cd525239215d3ffe3418404dc
Date: Tue, 29 Mar 2022 06:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648535098
