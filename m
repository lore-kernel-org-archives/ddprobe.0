Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872D410E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2085C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688849828;
	bh=XyU77Ko5xhD6aJp+dz3TZE4F4OpV7Bx9T0lC6oHyjvU=;
	h=To:Subject:From:Date:From;
	b=AjT8ug3ztkAztX488dmg06cAsTDMWLYM2eIvof2D5oaaWIirJbYnEG4oKw2c0LXIS
	 FmxR3/g9l70khvwc7VuV7AKmB7sotM8v3BTMeJHUVGOimcyY2RglwKRhJJUm2Hbw7/
	 dv7Q3ZCPl8cf1W+4K7Gbvw6yQ4mzFOuwh7fjs8RxKd8R1uRTFXttw9N4z4HNo4TOZV
	 EAJm2DDxLrN8lRDMx1qumxrp9EEqIaBT9UYhpNIH+EcYhkDIQs2Xh5qgsD4AByH8hs
	 P3lXlpuxWrAf7SajIccyNum80+dEyeKuSc0azG4Ak53KhrDWlINw0Lf8HkVEZEBZjX
	 Ek1bhImkX8FPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE655EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168884982876.21845.17020948010895521273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec278c446ee9b4676d1d318b009ed419e6c7adbf3ef00038040a3603fd07fa19
Date: Sat, 08 Jul 2023 20:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688849828
