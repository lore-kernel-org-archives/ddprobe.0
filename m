Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE19A390CB6
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774003494; cv=none; b=UZbVdMZi1VTQ2Lpe71dcMi8NYLMm0waHIbpudYGZlPrc8KRjwif53QwjZ1+MLHhZii3fxS07Ayf2T0kdAX8UckyJ+8EdmehdrzHLD08GAGCW/irDd4LW5kN9HfqXOCWJNtYyTMYQyNa4xAMd1ue1YvKreigZp+d/71TxlF9qyBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774003494; c=relaxed/simple;
	bh=s7S9ZxoD5EgVMZBFH50mhL20qfEqFZVRy1tOv7tI88s=;
	h=To:Subject:From:Message-Id:Date; b=a9Em3F4+Dwu85YNS4i+6W+X+w308hHMRFHc+UyWm3pi/ZogmA94wYwKDt2rgUF4n/gAUn1IMkwCvhMUMy4wXJ9ELB8yTFlppoPON57YFPXH6/ooPqEwWArrWNm+Ok1Ah+2uhhgBtYvMVAfU2BCCONOGgsC+wmGicu+nmlL8rWJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdwHYnQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdwHYnQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D54EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774003493;
	bh=s7S9ZxoD5EgVMZBFH50mhL20qfEqFZVRy1tOv7tI88s=;
	h=To:Subject:From:Date:From;
	b=gdwHYnQ4tfRx8qLJ1iIYKJ3pLkRpdtFlVlBFjLc4pDuJX5IKqHYsTBVJi6MD3trBB
	 uX1bDi9GARIXeFT6KRVuD04tGTCNg1YFtvy5bJ2mGE4PH2xfq3dqXvMotsUmPTiejo
	 oJnxKCv3s5REL2rWh9OkyX4ohz+Lex647nRWSv7EOdjpjqITVyj5VjXgisBuy23Hwz
	 2XhYHn0SPDluUhmiFI+gFPz4Ixe0HLLkuE5xqnXtZanHByryhuzonvr+YUy8sV14QM
	 PLqm9kY8e9aPvhuJcKd6CY/S3TibtvHX/WQYqe8SdWfxYPu+Pv434AIOfntR3h0/2w
	 37yxLKZX0egaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F072108B8ED
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177400349357.8354.82371281614455377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 321cd1051adc9d81043b1455498479a280db58c8bf4e07ea13ae3ccfa9fa9884
Date: Fri, 20 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774003493
