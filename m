Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52ACA4698
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 04:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648182418;
	h=To:Subject:From:Message-Id:Date;
	bh=+2QXB24qDzqE31mnOi23u0t0d9PEROcNfuTV0dEbRfo=;
	b=Ryapd2R1GSPMHjnfcxlIMD8X6U4/tdwhvgKVl4hVSLc7wXcwE4sZsaGz+GmvC2V3
	w1aAbA2OxpiYq3ykg7/KDNbzHezqh/Ie9l1fAVTl1ArTKU4cP+Fv774vFBm4FaMqX+r
	R5Q8kIp7Q2HVWon6IjXNhKYpbu8pFOD7a+BEK+WA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648182418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+2QXB24qDzqE31mnOi23u0t0d9PEROcNfuTV0dEbRfo=;
	b=RrhFb33qt+MrUq+FRuFyto2wAQL7kioTKaPoCKzA6CkBur8JcEgVYdChvImoceYl
	V8UtYqkfZtUMOLh59gig65aotdMGzW/BlSEe/C0ns/getfdDKYPIrMxgfPHh1Lk6jTQ
	kzi8TuqU94Q+lOgFNRJq0WO2Opemwj3SJyrVrJzw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbf53db5b-f2b028bc-7636-4391-a6ba-fb02519b75f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c322553fae24d8ecf50574aaff9aa27b2f662b740e6cf97b3c04ca077ce1a84
Date: Fri, 25 Mar 2022 04:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648182418
