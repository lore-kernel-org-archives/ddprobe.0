Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C05C4AEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719669263; cv=none; b=X2sPdYCkdIrPwWQfq3brXb/GlfQ8obEhkRVOCcO/LqpUxQ7jeLGFp7tA65FsT1fyJGiyGTyyFjisgseEruAGFPGzNV0xzNTbt6z+f4d/VgkgunmA6G8j0gQeOqjrTuBO6Wkl2EkSDw+k9DI4PahbPxr8wJt8UAah2Y+4VWFIDEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719669263; c=relaxed/simple;
	bh=NmHIzNibZmVfU9z9V7No2YjU3qQUAvrGtbOlGbOUS5A=;
	h=To:Subject:From:Message-Id:Date; b=V8+cp2ykqO9BnOg9zyobEtWdRp6P8QKbBx2Th0NOaKV8xH6N0uKd4u3tUYPj170IGWB3A2KVlIzP1ZbOlRe7dkT23/Zzv+MXCWcgS78L3hKJTBgBkwgVFLKNETtK7Pw+PeSyuz8mCt6xk9nV0WM47n9IO7ydIWx3mTSPXKZsBkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgyMiNCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgyMiNCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5524C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719669262;
	bh=NmHIzNibZmVfU9z9V7No2YjU3qQUAvrGtbOlGbOUS5A=;
	h=To:Subject:From:Date:From;
	b=sgyMiNCKA7OKQtaE/+JEtzWk+LCmjqqt6pAjitcq6bCq0qD2mjYQPZafQ8YoMjZMS
	 Qoc6/6jMHU8hqWkc943m7aXqDRMt9ab3Z2H5EMZkkXSSsh6TYKV4fcLQ9p383p6V41
	 e7Mg16Rov5hLsxP307T4z1Gwsj8DzvbSOWIdlgY9AtkxFEEvQOetwvDK1CkfI4fFff
	 x2XduXil4DbFhFBgInMrRFHml/4WZXWqysDDBbqdg3nn67qJq4hEhJYjqZZn3JfflE
	 tPYkR2UQYJIXmfFikoX3AMFc+46Pagqvqy3nhpWQwj5qeBew8Sgo24MkCILdaXHmpI
	 eEfMn9zxo7sMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7BFC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966926277.15924.7167601016430261931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d60d65e99f82f7bc4a6bdce91d0fe64167de73f271d150ebde665c413435f45
Date: Sat, 29 Jun 2024 13:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719669262
