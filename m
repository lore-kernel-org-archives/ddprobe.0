Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A32C41366
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647234385;
	h=To:Subject:From:Message-Id:Date;
	bh=vg/BwC4pKWIavJveBdazXa3/Z28/dc19T1NHwHcSy6Y=;
	b=AZyxpa3Q3ZlXFM1pqAuPHOJNzml0rUuZgXc8k8Cm0FPYOnqyQUiA2YIOkP0xhwSG
	R9F9nPn1OKlhnCB7PhohNtA4MCjR3hGAm1ahNdtjFk+TP3D9ASjQpIAjKGKGXfAwMzA
	dLdjvaMoxNOb6V8JodaJBzs2htJrMwsRnCTIlR+M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647234385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vg/BwC4pKWIavJveBdazXa3/Z28/dc19T1NHwHcSy6Y=;
	b=jfHwwYvnT4Lik9ADSyWYcXTM+BAnT9Xj7a9uwFwBVAHRRsXlA3xKLcY5xHkJJ+PA
	J1x79egU0zpcazHySMjNtXIesCrd7QGIuXLi9u0vZai+HtiK50qrQ5DSHgW+rdtMNgJ
	OuAphFrs3MfK4G/UMZnKl1DLeYLZ+UNPCAMLRsmg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f86d203ab-3dddf856-3bcb-400f-9913-51d3f3aabca1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a9f85f43bf62188edd1facccca199ebdc0c59d7be511ff84c7b9b2a64cf3d57
Date: Mon, 14 Mar 2022 05:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647234384
