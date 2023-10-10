Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43ADF32C64
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 22:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyX+Quyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C560FC433C9
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 22:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696976828;
	bh=uuD1MTbIhW8KPU/In5edSh2Qa5oZUY2kYAA9sFFE8dY=;
	h=To:Subject:From:Date:From;
	b=RyX+Quyv4y4BP5qpgD8BqBB/ahnQuQFeLGJ1W5j5nUs9jSiyXj3aQUA55b9+uKFws
	 pmuTKJeDDQlA5ZX5QJyngRuPbTzZ+ngoPhP6MDP3pl7oQupV433IdEaEyS3W81Wqge
	 BabQ0H4wySOYtTdNIAWVw9rYXXgPS2iC2M0fi4I9JA7S8rhocBzF6N8dHFvwdHoxcW
	 hm+SqNWHMn1TrPBj5jR8DmnJ6RGjjBIi7aSd7g8TE8HRrY2SNoy1HCeeTaF18b/PCo
	 /2wVMByFIV/TK6K0xfdG4q57tYuqDPng/tSaVz5g+UKWThOUqX4451P8/5/TWVhTWb
	 n1pCA0+cEbA5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A882ECD98CA
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 22:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169697682868.29616.14078292403331387668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a834f2faa35902274cbaf0cf7cc48fc94a7a75d766ef41b833263b31324f5f94
Date: Tue, 10 Oct 2023 22:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696976828
