Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090EE23B2
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 21:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649021278;
	h=To:Subject:From:Message-Id:Date;
	bh=nDi8Xcsiv3f39oGR3MwegQAJkTE0LSGXWcx5p9objmk=;
	b=ZNFzvwE648aBHAtOyuKbHFX2EQLzR5xkUrAyvCAtO5wGpe0EMwvrXurlPwGYm0zq
	W4w3UJcliSBu+0HCJSwvfTEgG0YOMDoHGdC+w56o3wzLZXRLKOG7T4bu+YLeIhPFsFh
	BrQThCi7fYyPnnyG5w2GmKDQ2FqFphGOADjKNFTE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649021278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nDi8Xcsiv3f39oGR3MwegQAJkTE0LSGXWcx5p9objmk=;
	b=XZTIlgjL1gwJBIAR/vV2Uma1ILJqZ8SIYoNYxbPb+QMZOjgCz7Y3coyTA1+vzGaO
	/oTpxSqlhjLGyd8B1vECFdzDkqeA+6nYtfheU6eHG3Tc6RDTRdhP7opKi3fkRWMAzT0
	ZhDcwZMbKvaFOT4etU1uyaIX2sqVjxp5zW3IZnrQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff153d84a-29c6bdec-62e8-440e-ade1-7038c4a5a2e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a06e8449c96010b3956676e53c69676f6975ed2dad9f17eccd6d3d4596218163
Date: Sun, 3 Apr 2022 21:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649021278
