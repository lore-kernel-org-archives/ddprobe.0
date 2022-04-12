Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FEF7B
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 09:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649755198;
	h=To:Subject:From:Message-Id:Date;
	bh=XZwDV7xEMjiAf1rwU+rr05xGtUrpZK9hgeoRYwFJ/Jc=;
	b=J85if4YfzzO4A/bRGPHrUjqyhBUptecDUMkDvmQFcShkdnKfExKoYJuH5E7PceVv
	sNkXmkfLi4OXRQOKFLLGrYA+Tk/8SjHA8SjIKzeTmt6MWw2rXk2AxN3p5CKGyJOq1ww
	qryc2pZqPUY4lcQz9BtEM0UarCrQUvIl8FLIiGN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649755198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XZwDV7xEMjiAf1rwU+rr05xGtUrpZK9hgeoRYwFJ/Jc=;
	b=PMryI5dsTT+mEn6GSn72gLdoHxY/ohGwslR2AwDFXzpnu3cOqhreYiPxcOWBDft5
	dYCPXheH/nVyJZy165J/H7JY7bsE2Ih73IxtNmtnk7baWGZSyCYMzF4FvAl3TZ57aHu
	NhxCa72UFat0UOSHu1bgGPQr0AgzgsnU6fymr7VU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801d129370-93de868f-36bd-43d3-97a7-7a7ecaac432b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 652ec016e31d3938baa6778ebb99e1eb76ac020b0d9f73489abc222d302e7c0f
Date: Tue, 12 Apr 2022 09:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649755198
