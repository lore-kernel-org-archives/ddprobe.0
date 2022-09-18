Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA60E656
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782DBC433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663485653;
	bh=Ag73q/gPvyYYPwbspfFtiPDRoJXW3yyqRPMIQMGsVv8=;
	h=To:Subject:From:Date:From;
	b=cLWbR1/0PKZrMUfnOSE+vXTPtEZRJFNWhdIs3vernGJoPh1EjGv2vYa/FtNbKEbqO
	 8wD31oML/EDf/X6JZE1zvqtlLIchdmEf0nuLoDzaqCuKsKQdkgn/e/gjtUlvwXHci8
	 ws3b3rqrz683b7yQwfBw2+lhb3MRDsemGNsd3bK6i8/NZXtpUSJSIAeJYFHbB/9cC0
	 3VdUf/8KiQJUvXUsTFIQwRRpPIDgNnhr/NrfXUQglBJqvtNMmb7xnC6fbWKeL0sZV3
	 24Mur8Lj4jJOAW9uYcjY271SQxrR9RXGLwtfpJNDMZsnS8TDuT1yYXf53SO74tatnf
	 j1z7YKSo0EVxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D326C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166348565334.11408.9150994845946450670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8b66ac6481208bc17768cc580285219538b49912e19ab0a800d0505abe0a69
Date: Sun, 18 Sep 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663485653
