Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1AEA4378
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647534084;
	h=To:Subject:From:Message-Id:Date;
	bh=zUrxzbtlTc/SGWcHjUWyoQfG7tnr5OBRnm82EpIEWLE=;
	b=Vm8HmKSV0+MN9E79DBQ7D7uXDP1VO6xGEkTJ/2udCKYSo4jDG/jv3Q6PVcZR4M1O
	pKiRgjBR0c/sQ29QzZ48L47T/8epAFg6JcYrQqoPuanRc7L/hukWTvg8p0hzyOzBRGF
	cMP++jR7smGbJYwZlz+fG1eCdZz063OiDdkkykvs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647534084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zUrxzbtlTc/SGWcHjUWyoQfG7tnr5OBRnm82EpIEWLE=;
	b=USoLZr9aSQVBrR03JAnb7z/wdh2m/wAt1K+Vwldd+UmQT3/0mnhMsUbq9ow6GWbx
	bYfKBOd3CYwpC9YuqNsaDekPpnDURTo7boRh4IXRe/vT03YLJ07FgUXKx+38CEJOeGQ
	bNrhTZuXsqOIvI1QY/HWl6WgTdxd+y+d94GNA0+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98af126e-97bc1dcc-70bf-45fc-8fba-6e7671b9a2fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53824f9b95d4085465efa686828641c3ef2cd26d2844529f3e3cfb8b56677e1a
Date: Thu, 17 Mar 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647534084
