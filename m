Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF04E3242A9
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773408894; cv=none; b=fN6pxszzEys/clGgsGCh4K4d2EczThCzErEM8M1YEhF8svrNRWBihUV1mB9h7gWekXa5yUdPy+Gsz+pjEd8ElsqyxlLI7PTjPoqXHkEilJDi34w6TcHJ+IIn4fPrY0goFlXw6iqnH9kPjngPVdgC4KQOEKaQndzLgo1EfODeXek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773408894; c=relaxed/simple;
	bh=71aVOAq+xWnWrlgGAsYwJ0qqDAPqsKg8JZXZ7JcGruo=;
	h=To:Subject:From:Message-Id:Date; b=Y3Fd/3HUdT8ej3cQb3DNnKULBROxag/dF77V40fq9p6H3+xqdJ6mAw7puNJ/dMYQCwbrnp3h0ICziIrg3MaCbW5ed1JXS4iGRwk386kB+lyLtNHzaZ8TNZ/8hp8+Tql7Ic61BUAv+4xGoIMKKSHzMkVcJ17wRuiFa/xOcLPUmD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCGt5MTR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCGt5MTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0901C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773408893;
	bh=71aVOAq+xWnWrlgGAsYwJ0qqDAPqsKg8JZXZ7JcGruo=;
	h=To:Subject:From:Date:From;
	b=kCGt5MTRBjKsVeN/KGzyVYQRGcX9rybiXatAa6Zku6c+j0KiOfp6HsvY9IgP4JzS/
	 9UWT8jMq8dGYnfcQBOk0z/7XXbEOhKED1VE+dEyyj6AUt1U75IUk80Zdq1G+sWeT+Z
	 eTZszSexwkmsf+vg41o/Xc3iscK5WqSnMDuQmhpFA98RKM60sNNLDP6UyqsBBCCp6l
	 gDGVTUVH0gyY0v+1S2FokmsG4uPCJfjgiboLQUS/oLrS9OU0TE+DkMZwh9dj2ucN5v
	 DQlM9mdgJamQEvczt5szTxLfoYAJ6mS4mbnJRh5wSTKmeM6rqR6MuZRIYMcX8vWGUb
	 rL0pyF/6CltQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909C8105F7A8
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177340889358.24155.153084279178045862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc6bf59755337f53ba902c95d094c64ca3a46980e9f70345180ba53098811006
Date: Fri, 13 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773408893
