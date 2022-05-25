Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16686A47
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 06:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653459779;
	h=To:Subject:From:Message-Id:Date;
	bh=oE/ui56zp2y0mo+1iNDA+XdjkD4fmJESHUBTc+OkUXU=;
	b=iu+aTmbNFlu2DUU3Cr5P4vUWcpM8a2yMZEErT81Mpjhjr0EW4PAafDffRmJWorV7
	30YUVzUnEdT1XQtb2dO3u1FZ9JWkNOBOLmIhLNs7+GLrAXRfrYerr+viWZsbKbjMKaA
	hpMg6bNhLvArZnaSHEUdh1ovhyXuXDBXAREJsKiw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653459779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oE/ui56zp2y0mo+1iNDA+XdjkD4fmJESHUBTc+OkUXU=;
	b=FsAuq8hNFU+yTyJk5sUU/ROIKcYgYId4pob/1RRwJv6fBCWx7nc0sM6K5BGx10Sw
	kRNUnkuN/FbRk81HxqV4uq6tlcsEHEPobuIAAToeS8dUsXRa9ywwfcgfhGi1ukNqqsS
	4AJ+azLnTOeHPFIJayh/0yaldbLeTlA4VLO4Oqa0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f9e1fe9c-1e12fcea-3ff6-4adb-878e-1cfeb52fa629-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 322e8e52be273ceb88ad82785678f05bf6546d9d0d985d311c25dfb26bc49638
Date: Wed, 25 May 2022 06:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653459778
