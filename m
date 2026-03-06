Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C5E29C339
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772772894; cv=none; b=nJ8Ene3y0SvZ4uMZacykdQOFsbwjBZrukGgk9khu6Cir4/3t82A5kyaXXB1WuB3VmYQpj2sezJSHzrMplyjMDcDYa6CjTyKwahOjbqfoDM3wUshRuzB2ewmHBnzrDfyxKpqRLYC0jnzHje3gdBXtT16rkaxdDHDe6Wp10L/ULnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772772894; c=relaxed/simple;
	bh=Eex9GTuXx/BfcAvML+Cqf9lxqyvgzJojQ81teigorXE=;
	h=To:Subject:From:Message-Id:Date; b=BM8IPWZnVXfuuc+gtH/CBHY62jUrXLBwxMJszvTsPUJGXr/psApA05yRUPbr5xAMGa/zJUBv/2tkAGlDb9ivfqEqHXqTlW/8XldsxdPYgwrvIcMCCIsBdVoSthwW/ODcDtqNItJFjI9sP82OIfKU4VGYgcAjEnQYtuWShKCDQyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiR2ca6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiR2ca6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A670BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772772893;
	bh=Eex9GTuXx/BfcAvML+Cqf9lxqyvgzJojQ81teigorXE=;
	h=To:Subject:From:Date:From;
	b=AiR2ca6NYU29+aGdyp4bFjzsnJTQyQG/7BShMlFwN8LwnZpG9tL7oWYhw7+eDmL5E
	 wv6B6oAQzDdf9LXGP3isNiKX+VnnMnEiWCy3r7w38NEblu85NV9f0xaIt9aYbnA4Zk
	 7UG6ZJuD1MzMTCfkPank5X5e1MHNPwANzfvqc7XzFw6EsNZ8vCGM7NM/lO1n6wl9/+
	 Mw7FQYSvbtmdkHMBOphS7RlJgOAgZkYqMgeFYvgwMnU2jXpv9iVwsEdjEsJcaUvLoH
	 G+g7aG4btYKYzxJAcBKwJ4x/Dr0oB8HbscTefpSOnE31OAgztZiGRXP42z3hkFe5Lm
	 Lx2jzcUhvOugA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912CDF513F6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177277289358.3693.10139704683028989865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 791540ec5a3636e5a21066261e30b5bae67c958aa62f4d188682b72158f60c57
Date: Fri, 06 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772772893
