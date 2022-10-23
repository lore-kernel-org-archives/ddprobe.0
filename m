Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAB239A
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64043C433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666555253;
	bh=opE9naZ0Rbg6jpoDhr3buY6r45J3suDJNao4q2h9aN4=;
	h=To:Subject:From:Date:From;
	b=cU/CSO5z+D8UkUlFndoZIcuqdfb/gTFN6UMVhduFSTVVluApp884Yp+4yXun5wsPT
	 56/XOaSgBTSJDj9VT4Y5KeXhIqKpxLyw0EDPG4pqyiTAhH3t9Jmw2rHX311UaavdH+
	 kbOIVpaP1imPkXKqfWMV+qMjuf7wt5MUPmyFoEYrcLWGLjpUivEqK8VyMXLbk0TSTE
	 ODT0GLmGOhfIld3kZVI08oIhdlhDueibpCElw+CnTr0AfqMtnhx/6Lv/zyJV6hkJQA
	 SV83wfkR+cHlvMfSXgFDWTr0Qj8mDy94Xtp2tjNU5QZKYP+ycKYvpzbqKIfOoG2Qdf
	 CUq0nwpoGwntA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E553ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166655525331.6093.17060083888078356518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ef1dac630078d1efebee1547f7634efb452a5e828f6cbc71701f9754a4effe
Date: Sun, 23 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666555253
