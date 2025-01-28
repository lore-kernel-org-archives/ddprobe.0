Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8691946B8
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738108554; cv=none; b=F8sIGfoLiBTZzbugdqs1eoeCNKN6ochzaYfmP5s2hsO1tkp+Uik+Lar419KCIfJxqeJLWOKSr7AIcq/T3v9oT/0n7PmJX8owcn+myFN06XtYO8NtHXY5H7tPxYiVNWUDD0GFz8+SogV6Dn6YhKl1NQ2eEfZXU+uu2gPLhVwsN4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738108554; c=relaxed/simple;
	bh=EbauQxG2PgyRx4BmI+YL9bvBasiIhQg4md6bFPVlpbc=;
	h=To:Subject:From:Message-Id:Date; b=uvxSVrk1l4YnemdwBasfupQILfEwM8YyiXg/VqMQA8bCdZjfDvlWBJJT6cM9O+YUR/CeTd7AagMOcEMJg3xvNJ2jHhgy0W6CW9SKLiKQDmBJswfU8xjK/EVkTl3qVR9DtCEwXPAHSi+d7qX9/+iHgGUrMSAn+IprpXvnfOswlXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiAk+LsI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiAk+LsI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE66C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738108553;
	bh=EbauQxG2PgyRx4BmI+YL9bvBasiIhQg4md6bFPVlpbc=;
	h=To:Subject:From:Date:From;
	b=TiAk+LsIdm5JkxfgHCRwhVHbGftw9+ObDzSjBc+/2NUs4RleBxt6Hx/8FyczOgUFi
	 7PAD7GbU9ri44yPY11k7TRSJT0lIDxF6+5S3FrYh62YlpeNmKSl1ekjLLaMAEoUBK/
	 vS2N8Ra+fJQ9Z8bkBnLxn2fgQadfgHHXP340WX3WnD5i6Chp4T00opwlD7auXVvf8u
	 P9UnmCaojY3/gpQOEzEdO7kIS6VS9qCeeLs89KLP9vM60v/fEeXXJ3rhKMDwxLbvjZ
	 YrkEFAdhrPlGhFJWSRYPUATO8YF+88l+CCUoW9HtDqIApZC5fu3ZOgzVI9+MolUlFU
	 SmQLmiVg8EpAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6A7C0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173810855362.16128.7289436961770041102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a55649a72ba8a792ce13400056e6bd5b3643ca0e4b5cee5bd38df79aa3c617bb
Date: Tue, 28 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738108553
