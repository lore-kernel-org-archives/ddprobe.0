Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96D9F17ABD
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12E13C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688768829;
	bh=/3p6EAcQMsdY9VZTobE9FUBR5sxzepDuEmx294QSiBg=;
	h=To:Subject:From:Date:From;
	b=obvFvKWYGvTUprl9rS/w471RaPXuZHE7lRNmJFPTUbU8flIZWGSctvaGUswMdsOWL
	 w95TCa3LDsqDJ/eWImpjFEsfwKVrrhmNpSCQGxxyjJGA5fY4FFJDiRUFHPGqAxDw6T
	 Fr0WczbefJQ3KJXEMjt5oW9sQvqwnt9RmsP5xJKU6tjYe77NckjiKQytZ9gp9KhuXA
	 Ej1x4Zmu3XiWLru8RhbqQ7C6yOD72QfG5kn1ZQWVof9oOzWIB+Prs/FdIld7q/M+hP
	 j/DzNqpuBJ62ZNuGh2+n5tLVGkLI7R8ubJX1QyHtUiLmu3QRx9yDrV93s/i8fu0gwe
	 3V1CVpGAHbfEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAE19EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168876882888.13192.17494332016333097776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6d7ec5b883247ddcc62946fcffa391be8ee36386266b5f1317713d275cdbe6
Date: Fri, 07 Jul 2023 22:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688768828
