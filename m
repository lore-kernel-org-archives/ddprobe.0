Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE13C193
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB38C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669467054;
	bh=/qFyBY7xKbfFASffxfeTX8I1KKgzAEDbpjt3QeYAepc=;
	h=To:Subject:From:Date:From;
	b=gHAiZhHK1Dr6Vw7xnIdY3p1zGnL9n9TpMWd4H7Y8EB33bb5UeAfPEQoXJehrvwOtD
	 88GyZajGwBJ+IYhM2kXZLWmnu4hMRs0X16KeAjOem18YCAxEuvFaKZrqX4ysV4Qmzj
	 JRf+6FX+HT9b7bU8jMT2Rz5LxFZIWfpNMpTxkF2UrAkCKa08LEIbsy2H6yaiSG1dvV
	 LwO9EmFhDI29VIaTwilUth6RJ1vjgYLnWbgHwYlO2KxkRdiTla7x5ps9aecEqhMXX6
	 TF8Rh2cD+e4zP/HeFHBGY3NyI/O1o0VsEDCAqtf7lcclrvg4X9iRnd4aToFSw/yOk0
	 QCVfKKz2yW6jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D631C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166946705436.19406.11277359729025992438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 523e959dbccc75f4ffad6e96150b561c29a81181c25db68ab21f0988a6d5a2c2
Date: Sat, 26 Nov 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669467054
