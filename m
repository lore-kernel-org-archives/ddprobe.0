Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 884AB7C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 04:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656132412;
	h=To:Subject:From:Message-Id:Date;
	bh=zu5mZolfFXUDFYNtsjBry8BSwkJstTh5xiynwBlb+7Q=;
	b=VV6fbXnykM5GqhmGATs4+KMP5nycxE/hC0hTvbQsQLWw82Z5bYXSYhzYiHSOV6kQ
	Y6DiTsI71bvoZvlPldKTPenK1mmsc4jA/oSKZM/3bDtCGxU2m13wPGakjL7L8JaZRBx
	OHlQ9Fmox7rXp9UhDDyyBfXRg6eMaq+A10yQ+1ZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656132412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zu5mZolfFXUDFYNtsjBry8BSwkJstTh5xiynwBlb+7Q=;
	b=Gmv3tetQrzJ115Lip9wpv13KrBJIhid4ZPh0AYrq/peMoE5+SWx9JqZuafNNnIXr
	JIIueSrTd5pwzG2ni/iP76KHRutFaE5q8uvcXXzG9kMuJHCGvdg2G9Qg+Ttta/F70xV
	lCgQeLm1MzQMUtJTxsvb4En+X3CbZh7EGhEbZbug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181992f2383-cd2bc32d-7750-40dd-9879-f88ce03d7c94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f734abdac793a45b7dab3678e1b28c3e1303fdfd4bd1cdcfba42ce45452126b
Date: Sat, 25 Jun 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656132412
