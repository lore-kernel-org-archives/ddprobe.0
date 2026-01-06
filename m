Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF9A221DB3
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767684834; cv=none; b=Q6rQV3vhkRbBRlf+f8ERbMt55RlKB00AwfmjkJjsA1ZdElWz8Q6C0haor2jw+W7ghl6lFLeSwdCOGwNH9weRm/tHJYADZZIE87ayFEFKqFaetO+8jCzHNQIqeNA4Cyo5EgItgooVdMCD1AUOHYV7WUVF10pAjnUL8ZU6yb6D47Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767684834; c=relaxed/simple;
	bh=F7SxojIR9V1JRd+vdbM8VS3bYF5i/9caMTIs/cvUI/Q=;
	h=To:Subject:From:Message-Id:Date; b=KKYoDKmFWe6vYVstcfEFQZMCvplozyqg9aQl8RyjP2DJpsB1pnBtjborFI8SYVe9MBm5yr8sM+V7e4zPfjLRdeaXe+aS1jrFwOjdb0oDWE1GGO6B/2cAg6clq6wxJMlKZRQ9xTnyzVduUCHGHEE5XTiPShco5OhoesOmLixFsQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxQ/Xrmv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxQ/Xrmv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF14C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767684833;
	bh=F7SxojIR9V1JRd+vdbM8VS3bYF5i/9caMTIs/cvUI/Q=;
	h=To:Subject:From:Date:From;
	b=mxQ/Xrmvp+rY3pk/FX9AarZbDI1TI/lalPuwhaBAY+zWf+H3W+9soxGVhvWXBVl91
	 eCNUpI65bt04uwVbQvqW8EQkJPKg0u4WaQUr7f1gheru8eE82jpHEV3Te7Gsqp1HiF
	 s4/otCWf26vUd5fiSSiMaKMHQOyE7bYqHWUoFA1eb/FLC8Jv/7GZ3KtUzkztRKbQeI
	 W+ep1YMLhHL4xbGURj4PTyzj+pQcp+hS5cUpDWxyeon+IfwcW76WQ4mYjtEq3g6ziC
	 3Ow6DFRUnc4fhN0V3St3MGTKagOKSlzIz95NVcz0Vntv5zvqV8ZqLJ6yA+ca1kG6og
	 gF/5/3Ls0+u4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AD1C47BC0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768483358.6251.7514821542502783349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fbf047bd455c78d07d8cd7accded9e582f73e03e070ef25fd37b37826845e39
Date: Tue, 06 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767684833
