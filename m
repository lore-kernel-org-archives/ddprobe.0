Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C025A198
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 794B4C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665621653;
	bh=4B3Fk1L2d+ucJMwaQp5aKOBG5Ea6A4AV/TuWQLoQSeo=;
	h=To:Subject:From:Date:From;
	b=iuBofu+LY6NKNEqxVu/cH0Bk8K56EOtgZugF3/BU71xL5lN6mh2KrzQpyR+IxKe8W
	 4wvNpCTwe6p5mV0HO49S1eDd+L46Xe6QVrG8iOaoIE0M/KTa3nSbRYjSlpqajNvu8r
	 j+AD19hOE08SFpjZUiMAqm3OcUU4dzt4G/1ramMMYF91GXpnHipmQOTiTFwkmm6j94
	 +iYZ2JDOcJesI65POxTyfQULOqJ4U5KogWjiHtVo4g0KFtLW88QtHKp+XF72eEiRiW
	 tuK40w+wDXboWWNicsx8QVj0rP9BRF+o9CCM5c3r32/NHsEYU+1c05+zwPnVEEoJ+y
	 aAXt4vPRT1yJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E53DC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166562165337.31530.5947961149626088992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f4741cf57e67240cba79a706901b18e9ae6d35c1192afcf35e1710df5ef5d4a
Date: Thu, 13 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665621653
