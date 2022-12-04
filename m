Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA40F15AC
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75265C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670164254;
	bh=9RgigwcHXq8YkuBYcenIC+mXrL+RrvXluGm1SuaPj14=;
	h=To:Subject:From:Date:From;
	b=YCmWJGG5G6CLYFDwFUyeZQoR1gLzbpyANAdvB9PoLNp3EEPW66aAm7wbRYGb1YRPd
	 7DWjpdfV0nUWnifUo1lxp7D+0m4/Ms89WjXqfHMYPnAKMAioTsdUFihygpAl+9B/4B
	 9enMOc0YfhIHv1eujKI1qmcrBEEBO3V+vPqh/c3iVJzRYhKh5fWLEtdWjqFK7dKxeS
	 ulxbPDE6XeLrDtk7/V4cCMuBJT3aToWLQe2r5qk95cXgNcmYLMwHRPbsPTJxUpmDdR
	 6m4r0QdfHdltNrXrAIJ/lv1n/vQ895By5wAWY52lrZCBF0JmImAmf10GWsj430TbVk
	 5KrR1eXFhjqEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F44FC4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167016425436.17375.1157571659193732888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b973ca4e3ba9813d88e80bed95d0e84ffad94974ea91f7abcbeea62509b8745a
Date: Sun, 04 Dec 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670164254
