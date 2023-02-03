Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B35D51B
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 23:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70F0C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 23:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675467965;
	bh=NUNGVNYVlJ1EjSxDway6GlAWTFxH0KXCjl//IARH00Y=;
	h=To:Subject:From:Date:From;
	b=TNz1jCXijmuUQXXxNA5pQJs4JaZMkvKHYxlvvkOYO9IYENYteVPdCjRiF9ban7oAl
	 WhEeoX7iUtEEziLbxb80TaDQoLUPAe9GAecglHvaOu/YJEmG+LEVyfPTynAdLblYsF
	 /DzVs1p+WejvbgOzS33unFDmeyQL6jHlbrte4x2d/X+qqcHfE2be8e+PZrGPSL7Ak9
	 vuN05QNiwcd4NfSscEqQaMFTpNSAtFzuGS5kKHMotJxSXRaG+FrNAZc74SiimiEqNE
	 i7I6D+ppHeekqU1uk3aA3JYIJ8ONGnFn3kecte77m9VFOMFg3//GTzg24yg+lkFM4T
	 MQa2tTvH3KddA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9277C05027
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 23:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167546796575.21120.17028224467596137864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94832c4a0431b46be5dac8be4d01e5d6a99a311aee6081c22327b9c60d24e494
Date: Fri, 03 Feb 2023 23:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675467965
