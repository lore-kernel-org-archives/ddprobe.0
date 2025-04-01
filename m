Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8111EA7E6
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743497394; cv=none; b=t7U5mKMdx7P/huKajda69Q+WzDfp2N81kwFepn9oyzDt6/5cMfZIJSHH7NfNXjsLOPasa4r2h4UWgrP9EK4L7P/WAUZGKYXc5eKk/vNcXb+HsM2ZvOVWFi7XgES86Elq9/w9twTgA2LG0OPxXydIaQnEAlCE7RdUwVA2Eav8fG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743497394; c=relaxed/simple;
	bh=AEYyc4gSDi6kEucbNZHbTPqLjCTwnqVpHd4V1o9Wz7U=;
	h=To:Subject:From:Message-Id:Date; b=mocDb6Nf0hQ/MqQ/hd+95xjD5QTIXmsbpLgVWH1oNyYZdRbtESN4DJ/oJ7Sy4Adpkf1y4JXQI/CF+5vm8QUodTDyjvJppIr+itLpESeD2i6qdq7G7CzO//ibqeu8NV2IRUaHjxrNAN7aAaimMoQaQ/Ialr4/2XZ/2aPGLnXR6rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPuhiWUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPuhiWUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7854C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743497393;
	bh=AEYyc4gSDi6kEucbNZHbTPqLjCTwnqVpHd4V1o9Wz7U=;
	h=To:Subject:From:Date:From;
	b=aPuhiWUbiZHZrgtoEP36ROXkMEVmgC8PX0MpCFz6dLNPo28jqwjuA83543mcdt7IM
	 scOJU9qRlp/jvJW3acbcZBFH6ywnwCcOpwtdcT47Dkzsk4MquZLYIwbcig1IaWjGVE
	 OzisMv95LoSzrL/+Mu5ptllAX3WIJaFnsL+eyEwB8+CM5c9uZVI4IML4/DOn8vuF0H
	 ej4npnMNnXRmZOpFodUIzi+yqu49HVf12FtY11529KUDj0Q3SYlEsw/FeNa/FIqeER
	 KO295bTBqYMqvW/BihRNERiVlakmSIHR2qqPrt/SjE+nGOTeBmHkBjZ4SxMJtl62j9
	 woJofE4CkvsIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F25C36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174349739367.26189.10339806312001891840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb34fc30394e07604dfbf3f88c73ec62700077b8f07df7b28962198fb060901
Date: Tue, 01 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743497393
