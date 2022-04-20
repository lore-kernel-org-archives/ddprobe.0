Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D366510F3
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 01:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650418138;
	h=To:Subject:From:Message-Id:Date;
	bh=GyE7JQTpE93AdjnsTCh19REAUCSymCE+VOQcfPkoX0k=;
	b=mVliKXWaMS9qfBcGtws7wou4IpPWP9MpBWOl3Ma9Uv/+RgzhSdoNxLOA7UxKuHhq
	6ExAQZEqvczf8mgpWqfPWZRnPHmgoYmaPAnXoM6Wtdg2UFhAacmFHkxliCaFcfUd8XX
	O+QGjw/+UQgRkmbl1S7P/emsTQDoEWQnPkWd1aQY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650418138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GyE7JQTpE93AdjnsTCh19REAUCSymCE+VOQcfPkoX0k=;
	b=IyxDzwPvEqRBH4BL0eRdGAZEkfS5gHdGrCrwWdY4WuTnxrzr3IBURTB854thDg6L
	7NEDexaa+oq6Nj/pYI8tId7OX8qyCuV9UfbUHWxYOAvOrDgM03y9ZZ5oZ5MrkI+Ppx2
	SZpyJwWxVPYTo1RQEou6QrKm8NoW/8sRHdQIY/4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018044963c95-5849e2ba-144e-49ea-b9e7-fda3be7f1adb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79c3206ac81d0d1c7d9c64b05e3b334080830cf58f9d588edb88eb0cff9fa014
Date: Wed, 20 Apr 2022 01:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650418138
