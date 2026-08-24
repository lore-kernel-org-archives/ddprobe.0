Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56080425887
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787577634; cv=none; b=Axa3MEzHJma44SNEIj03yfBKG/SlNWmRcZWz8SZWq3XsCo0pZZ1CXSCvCLURjlCefLrJNpkm46Z5IU9i5mcfR4z7VMb6eHDKmIaNso//CkQVfVHOytlTGM460DyQt2GFXIRot9WAF+IiKkf/P/YrTeNy1Y2zXoWppv/29h+DYIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787577634; c=relaxed/simple;
	bh=JQdiSVj4Fy1dZU8Oj0yV7Fem07hkRpJaPjmQnrfQ+8g=;
	h=To:Subject:From:Message-Id:Date; b=iFF55AuOns54Gd9pXxUOaQi2QJdLau00M8+TxYskikCs8FRlILaEthtK9WmqqeagxqnPpZhrN8AeW9ZBZszd6pMI4DX1jLbI/puflAf0Axg+bSJrXxIlj9myZbgGRzLHSc90DWFdSDxQGQlG/zojs1ylBathpefwQu//jiZN5kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpRdv8nH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpRdv8nH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD6CC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787577633;
	bh=JQdiSVj4Fy1dZU8Oj0yV7Fem07hkRpJaPjmQnrfQ+8g=;
	h=To:Subject:From:Date:From;
	b=WpRdv8nHp99fn7ibvg+O+bNoUbon4GVXSmownuU3/INpKbBBPV8dlM0nwQ9s4a4Yg
	 hAZo5k1XL30zmh2CW7KENWnXncVLEt0EspZ9+sSFIt19Np/NG4uSeHsuRDwolRLZj1
	 /Gca30fQNykBX6/bnrTn6LxpZcQRu7QsE3Q3PuiPLkhcrFa9qYSubc/USLQQ7gAH/T
	 RUT8yb94TYI0VOpOSHhFHde0zFEpbNOZQWyyqaTn04i6lC33qlyAZW8AAdbdWgrt9E
	 1HzKpYv2ZN2YUK35Q2K2RSHCIJ4GfYIe+JW3Gh4+zYyyCpJ3RtH3ChqB7+kHyu7HRi
	 VIhpQSUjiv6wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB36CC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178757763369.16986.4333158528300940664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d5e6259bb9a46fc3a0085c776edc855e27e9adf8b6ac4d35a66bcea488e1de
Date: Mon, 24 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787577633
