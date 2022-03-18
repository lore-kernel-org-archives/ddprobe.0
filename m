Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6494C60
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647610885;
	h=To:Subject:From:Message-Id:Date;
	bh=TeZdo01UsYYZtxD3q2sj6fi0j0teKoqFJRCZvUR3Pzs=;
	b=FUibj5MNfV6awPVK30P0TL6bPAv4ol5g/5NuSyne1AC28vDXGQje0eyMGaSPtT16
	XdAQkhu7sjunrPmIQZlrk9/NpLcMV1QSmbDPwFHg8F8GU2aWQFbKuvp/1XevUP9KlHy
	hJ53XeC72hcSPkmM4I3gmQDD6h2Wu9bM0qWaqqxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647610885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TeZdo01UsYYZtxD3q2sj6fi0j0teKoqFJRCZvUR3Pzs=;
	b=khOIUnG5WIdpXVyC5JkR1LTh1/9+8c+OT8WXdSe5PK39FgQ5GZxc6QIZkx2i+dSc
	fCdMOEbvz6OqqII6YCDpUO0kZTMYxDYhN4UD0PgWK81GHJIliQS8ZwsjJqi0zzZWUjL
	gxIIwrjkWas/nbtgOxozvpB2NxQUWAiZ+XQ9fxdE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d42f29c-f3fa2473-8103-4e70-b1ce-63dc6f460f48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f0974d6e19ef2468eb603224174763bafe81a77efacf5aef9b31b45887a8858
Date: Fri, 18 Mar 2022 13:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647610884
