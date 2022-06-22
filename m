Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1741A10FF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 05:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655874360;
	h=To:Subject:From:Message-Id:Date;
	bh=wdluoeujGJisYam50Ch78H5FviYsq9K/YsgoIbwLmBg=;
	b=LJOsJoKOgRR/T8d/9bY5vsm0U1AMwjGfjFhE7OAUqNzGVVHHYi7ijtdvVmtUdgs6
	vmrc7RHBctmz7cYpXi3X5+CcYT6H1FmCefFb7+qM9Azt3kMoyfaELRNMP+pod0bRAKq
	z7ioOwBBKwG4lpDCsQqiekkbtB+JmzAmX6wVA1tI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655874360;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wdluoeujGJisYam50Ch78H5FviYsq9K/YsgoIbwLmBg=;
	b=c3OZDBvY8/H7mKjCuqyyc3M59sgjFsANrf7f2VDKiPW3RPlIvt9PR4E1LmILJWm2
	uQOMNEwNcDKm4zG0INud6Go7zBZcHbnet3sTQD/6T6FWRdulhA9xyy8XB5chVarAE6+
	ekFgCfo6b94N4GLPmlNMSBstYF7mMtQab6evS6Vw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018189cd8fd6-2483194b-aec1-4df6-9e26-dd565b429ad7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31cbbfcace70fa95d3cb361d87b0879b62af9159c7f227dc0408c18e024ebd78
Date: Wed, 22 Jun 2022 05:06:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655874359
