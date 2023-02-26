Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A9B364
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 05:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6661C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 05:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677390305;
	bh=b7HIOjh7psN9a6/KRfDLodPyTZp2bThdx+tLuuA6+sE=;
	h=To:Subject:From:Date:From;
	b=i8ZcoMwPH7OYBgG2MhcutAKBtbvDiU0r8sRBis6luB8rqDJrxOJwaMQCsJvVMXf8+
	 szy97qMpqjsna6sQQIRjQP2RWOoaTnnHjXZtmION+7hw00UyhVFUwCzPm23HpxeRCH
	 yCGMadslCqA5kJw//nyOGqZ78TW/O/oRIhCfd70Q7qtKpqT7XXBR+9hrBtozPgAGIu
	 lultYZ+j3D8gaNtqyr+nVGuSOkCcbhx6h5Bj2wwAJQubDFfqyqUGik23lP37M9Hta0
	 g6O1B1Z8r0lcRzPXkEizJrifMoLxmIVv4ww55vTgdbrZhpsu0POkilvDosW+9gqtSa
	 SDyknf4eX5Dyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9F4C7EE23
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 05:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167739030576.19215.17364748854387968973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96fc3a3a96404904c4f372362ea27456dac53ff66c74c12c3f58fde0d249ecd
Date: Sun, 26 Feb 2023 05:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677390305
