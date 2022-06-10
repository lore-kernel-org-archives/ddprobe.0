Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE2D7C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 02:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654829579;
	h=To:Subject:From:Message-Id:Date;
	bh=TiFJQf+dNzgrBF7oxTBk16xfL5ZQXzAbtjDtHwMn8Oo=;
	b=HjeVsXa5ts8ps0/nB5KVVjkt/OVMW4b0jOzLkmA7YvKBAp6/61VV2Y1r6BEh8JJ+
	boR32/OebC/c/DV9yEGHZMJgG+Y0BIwrd4yPLRZYwPcumj3epshptqOJT89wjahDKKk
	zDxMoj/WvdC95KoKNiukbR8T0JjUxmwy64p5+PvU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654829579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TiFJQf+dNzgrBF7oxTBk16xfL5ZQXzAbtjDtHwMn8Oo=;
	b=Wnq+caoyqD/SjjnNpWLUlTHJSKm49lX0Q98HwwkCi/jrwdXXVUAQdKUfF0hpQRR4
	KMRP/Yek6ekGwRqgInC711P20a8/qvhbcJVNQugjSl9WCResr2jhlnSlEnrmriYEgeO
	NPVb/UM5h1tq4wQ5kTjSDsWge6sREKhITZ7Ms9fM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814b877bd1-99143dac-ed01-47cf-97d6-d169cbe6c5a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f16808432ed8d8b2438082a7d43c590fad632d373848d936792028b47f98f425
Date: Fri, 10 Jun 2022 02:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654829579
