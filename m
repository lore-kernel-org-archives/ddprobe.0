Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49071C17
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C60DC43470
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666927254;
	bh=NdC0zc5g2fdGqbUZAYPw+zf4vsN1u07tCL2N6WEy0uI=;
	h=To:Subject:From:Date:From;
	b=LFvH/YrPpwEvfVWEG2ShP4v88Q37GXQNxZuRbFEouyc3ZqFPPApk21yYphVE0cZTc
	 b8wivnxfI1qUcfLRS2kN7NImXELA749zJUUqc7OrC7TZTfAzsCEIUYaLOVMhrk1Sah
	 KBts5ZyZ88/wUONxfdGSpS3ILltpmd1CchnAiO5RKvS9Q/M2oWRt5Sp+VuJ8xshkYR
	 s4HIOPMNL7Y8uyq1jWSNgGsBtQfW4izSnaBxB74SN2RRAYiznnXQpVk1ClmTM8t/Lt
	 LjgyLl03j5y3OCPgSyA6PAoWz1qA3ara/Sy8NIjNT5Lu5iMBQqXm/us4VnT/vfjkCV
	 lFEDX7BhYJYQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E7ECC38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166692725437.961.11907002775263778819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2509602a58c1e6d165f6d0bd108ba79b7ca469bddc7a38d577b524f4d5d49a
Date: Fri, 28 Oct 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666927254
