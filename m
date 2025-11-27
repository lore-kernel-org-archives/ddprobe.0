Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222112B9B7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764202974; cv=none; b=gg9lH7BNWYL4hzsEIUVQpS+fKjA/CCoVRtDEZFr60fpDb71zjTRAu6t3w4yZYOHQXdaWcZhXRFr9lCv4MfJaFpq2FhA1R3mwbt/eDUh89jP9s1hxBmNDFPdXOBxd0iGwLCLPBuRKFLI//3ryCDj4xXlMGydoFA3K20A+GXV2KUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764202974; c=relaxed/simple;
	bh=cyJsHuO1hmHSMaS+3/V+9584zubj9XG7FGGqsu+9/0A=;
	h=To:Subject:From:Message-Id:Date; b=oxviGMakuVu0syqImSjEZl4vGO7IUWQJLjPoU7rNmmEg2z+aoXUzxuPzTmnljVAVbYxlUAhD+Ht5QhD8SRYb3Ll9/AA5bp88UpBXH6zZFOuRvj2sRK6hIMSKJSlL0+kIyVTzDQ24jyx6z+ImTCfJ24cID7Y3PtabED57lmoj5i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnCk39BU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnCk39BU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6B7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764202973;
	bh=cyJsHuO1hmHSMaS+3/V+9584zubj9XG7FGGqsu+9/0A=;
	h=To:Subject:From:Date:From;
	b=XnCk39BU3vucWH7S6IIvLpjhUoe0ZYOV0zzqDxdKYTc/xDobacRjPbGW1uGCEsBcH
	 Qid2qdMUr0wEQbHRYo4/rgv2TiZKcU8aYBRoPXphNutLX0v7+Q6ubvd5F031sGdb4D
	 AwgVMiTkFYkyU55sPaWxe0KvLgcFmRGu/AoNcKsqC6f/V+uR/uNL5BFGEdLHGGdqMJ
	 D4dac9otPUiHmj6+9+s+6CXVru9w+OH4D/LHiywOE4yXnrNNbgn4PKxUWW/has+eA/
	 //45ZmuRMVWgcOgtbMF9z3tEniI3Jeny5YIOlkqgZGHd8K7Qc8htuEW9W7i9dZLW+k
	 iGIc/9mEBfbPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993E4D116E1
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176420297358.14691.426045246042745361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2cbc12d996c996f6b4f849be34706d857d430138816ff79cc77b87bb9ca4c9
Date: Thu, 27 Nov 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764202973
