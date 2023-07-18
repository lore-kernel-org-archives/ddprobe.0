Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C171772E
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 22:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7882C433C8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 22:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689718868;
	bh=QAcMqizmGNRvyWeF12kuev/szFwEJAhb0hE0cEbgnJ0=;
	h=To:Subject:From:Date:From;
	b=mtVtXNh7593Ek11H+0sl4GdRva3v9RljJKgKjystvKLgmYw4Ft8skJv9FES/TZExB
	 DuusIk0jkt1manvJioenTQE7+PqkqXdrT0gPQH2opLCiA8bCZ+Oa/uczljRf3+qnUD
	 aVyqjsVdkMNQMWOrQy0DnXzoRqXTyTcWq0TMWnvMEBu+UrpAPKLM+Sx1DaMi6+MHOP
	 COhOqJfhrpCatFrgy7hAbhxzfImcQotjX8tSkp9slIHlgUV/2URmToiPeocWlPtIBm
	 f4HmbapfEG8uDARShtOz/3F59OToJTOQjErE1adt8Ect4X4npFBBSDVux0rbHVQp5O
	 GN6XtLooTPtCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86D4EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 22:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168971886867.27919.8230274340806535845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 550322e2c40fb2a4af2ef0eda427086525ededfac0ea2af5b4f9791e31ae5ae4
Date: Tue, 18 Jul 2023 22:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689718868
