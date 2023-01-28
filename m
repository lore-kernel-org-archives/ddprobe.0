Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDBA6FBB
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 17:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB2B9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 17:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674926586;
	bh=CENc8/v+RqKO5a12kj+pGwL8aTeARt6QUBPeYT4RBHo=;
	h=To:Subject:From:Date:From;
	b=LH5c4zQ/Ls9f4EtJLgE49Jp3hp79oGE7VsDM8TxQEffjYZbsMT0Ev/AQcaNxl2xAk
	 vitgSIo8MIY9Z+ut8HIhr7PyfH0h/sEOAjZr7M37eoOm7k9XvjusTvy6+4Qvcl/vIQ
	 XS0Fu+DTFwQF3J3BSUtSRnPg9niF8RfHR8eO+BHn1npyPQBt8YVGymIQkGLZWC3Yqj
	 WFQvo9r/AcY4vpehABUx3NBvY9q6vKBsXgde3Ty0ea6kvBlnW5M9WmYTC5RLf9Rpv3
	 ziR2m23yoDqclvBlnFnyC0mgABot81q3Jnulg8vWRZtNH8lRDfC2oFedoeTxAmJEaq
	 PR+ZYSf48TYmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA30BC27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 17:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167492658577.14997.9069184608452267632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b149cf65abfa9daf8dddb7b236bf6e36c797276c52eacc0917cc9562106352
Date: Sat, 28 Jan 2023 17:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674926585
