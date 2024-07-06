Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A96E433AB
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720268123; cv=none; b=TE2t8hhyr3Nve4jl5QGXfagQqS8617VUhmhohCd2X84kxyX3jJDZO47KzR3FXm4T9U1YszU8suMocEeBRNnplgtNiPB1SPTPQ5H14R0LSwc11NorifNu+Q2kCWKc63VQsK5IZn/IpKGyYCNPh5RDmDW5MSE4NsnOm627A1+MwkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720268123; c=relaxed/simple;
	bh=XN/m3lOlHSvakwAnGhVpqJb9CYUqRaED24BKAjVGKgw=;
	h=To:Subject:From:Message-Id:Date; b=meSD/GXlcTuBu07F8sJEwNZ0ORl8nPQe8qrK5jSHJ+l0O9pw56QY+LIhsVPC4uqf3yKXvoO56H2HuOhH2eeEq04SK0cLMYGk8pXZzkK+uxLgn1e+exCMyYcsWEuAs0Jk9usQjmRZuEXOGM9u8PBxzay0Bx+GVa7wiy1AMnndcag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJiDDH1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJiDDH1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D196EC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720268122;
	bh=XN/m3lOlHSvakwAnGhVpqJb9CYUqRaED24BKAjVGKgw=;
	h=To:Subject:From:Date:From;
	b=BJiDDH1TgOJlC/rdZxdq70qqH+k8wma97/A3rrknEB+taBZfYSs7kxvtDn2Mis29S
	 mjb8D/0KCEVWO0xh0cNyMhbXvRQIFj6/vH5Q4FKj7SYGrkvXvKFu52lr6MtBqErlHY
	 9p32Ef0jXF793n8r3M8MFhX1/C0SNMceJ22fyiXVY29C3nTNFQdppfoDK3DtjDSgSH
	 gFRYMK9Qpa6o7bvqz5PmK0uELWRP4sNEIvRIcQ+c6fF3zIbqapvkmM8Q17IB9HzS1k
	 WmWPyCwMAuv5wHeEI3ab/vS9YS3kNKZBOFZijTU+9AHitcGrpMp0w3n69GUMYWc0Yn
	 zoyF1VilNLfIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D58C38150
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172026812278.23228.13178757021628837089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 920228c042a322b1166e3677823b590bd8976bd9bfefb252707944a168d4c019
Date: Sat, 06 Jul 2024 12:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720268122
