Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4770A33CB
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 12:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649246878;
	h=To:Subject:From:Message-Id:Date;
	bh=aqJh92pty+3CK+QiJ1bL8Tn4ZFfaOYbULKek9wtAe+8=;
	b=iDvlwFXj9T2A4+j0fkaLPloPDD/+Fkpmxd3cBNZiG0rzzPuPb67bb4X3TkF/oXBR
	qgDkXZLd9vGuojg6E5P0oDLhd25IcyCFQpX2YGbemNL+bopEYYzFb25+D05oQTocOnJ
	1wd84uf63kiJIqqHzmGpHJ3Z7eT1vnlQwzkR0b5o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649246878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aqJh92pty+3CK+QiJ1bL8Tn4ZFfaOYbULKek9wtAe+8=;
	b=CWm60oq+CMICwsDwzrZz5aY4U/0KXaW0kpxLIlqeCnvyTWj7Ai4lr68ynjRfqkHg
	iNGR2g/IZCI/1MZGeeN8BIzrwmJpj/hLDXMTdVlK0iBXbrcMlsE6GoXhxL6XQRRWiUn
	yQU3MJTNoHvx8BhBwb9o/ZAUsrFniLTXFUFnMWs4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffec63a76-8b0cd84b-9b55-45ad-b9b7-44dc12b7dcfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e715e6a711e0fa287c5e905e6eaff0629b70f8f8a354bc80136adf030ae82ede
Date: Wed, 6 Apr 2022 12:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649246878
