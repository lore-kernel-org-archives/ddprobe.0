Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FD72DCBE6
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747982394; cv=none; b=p9eE9uaU1jQ/LecbO8MF10VViAkaFZdVG1yg5wu6Mmt0ZlMHXWWYyrW1HtE4ICnm8cDugHFmZ0lJTQnpvbCna4yTaHS8+ZMdTMM5bFlmocY4sQMfG5e85UtPMoNwLbLuGhFpbFoYMQAugbcvd4YEE1nAkpmGoc5htS7af1bprkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747982394; c=relaxed/simple;
	bh=tnlmmlv7VKbTpqe4PZaRC8hhp0HWnc8f5nF4k5XOL5A=;
	h=To:Subject:From:Message-Id:Date; b=byzGQ/oHlU0s/2FA573OU7hW47qHAz0jYx4MQ07RpcibZHO3Fjf67eJ/d9ePK/th9v+8jerLjL6yZtVcgao87UncgqNWB8B2/qiiRUbjSBEsNRbja95vGbaYNKVzJvkJcEVU0cC8sjeb++YjHLrWDyDm/fKma3zphcupdUVskJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epPInPqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epPInPqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3038C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747982393;
	bh=tnlmmlv7VKbTpqe4PZaRC8hhp0HWnc8f5nF4k5XOL5A=;
	h=To:Subject:From:Date:From;
	b=epPInPqOwlw75W+WGb/9sBtuqC0Lnele4UG7QgMqBxAwqctUnYp3YCxLJgf/OMf5V
	 D4j3Nlynk+amLM/Xv+EALouX42ZzRDopO7gdinmo1RtFnWrrH+mXa4GFjRWGpTwpry
	 4n1MVVn/c4ZVze/QXc4K8IIsekBqSAKKXRQ5IanILxYD5auWIduU/bpy4H3DiqQsjb
	 QCBLERgjRbyPbGvd48FmUPoCJtMHKxqXsvDwLoi9nWcWGL68VE1Vfh0Fk4JbwHeqVZ
	 rWYyndy3o/71L7EdaIMhazycE8xMtiX3EKA5aWw9opfoEGyYVdmiLfYt5+USb9UW4N
	 RurUAfg8EuZ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90139C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174798239358.13113.18054316322841428612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64f78130fb356f4e26ad00b26849067c9268fc6b83790d491982c68fa5a4ab8
Date: Fri, 23 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747982393
