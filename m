Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2500246BA
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 09:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651311658;
	h=To:Subject:From:Message-Id:Date;
	bh=p6rGlfyrQRD+Y03lxlptrjy6jb996mpNI+wfvzZYpb0=;
	b=N07IvmvattY2jFzzklW/TpMQAykdlcsYi7UXHe1pxzHS4bsunxqc+iiN8encD1Qe
	6vWrJeQ/AR533BOldPB4SPPaPStrFYxaCQqjovJ70GkgHnUAxKE1f433KJEpfEavqki
	/mSZsfTLN4QaGb4j7iZDWnNEPwQsI0MQTwCxXjlU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651311658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p6rGlfyrQRD+Y03lxlptrjy6jb996mpNI+wfvzZYpb0=;
	b=ktuFb44wdT8VeLDOCXNszR0YjuhSFRa1+SivNfBm9sCILLeRRy670RWPRKSFLdcn
	cOTepxjpP/ofpYI7p990xyuRVHucfIY8kA8jG/ioZh7CZWuTYGyoLwk6vtDeROwN38y
	CDi3g8EHLGpV8Nh0GXqIXcmkz5ezV0mkxTFtI5Fc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018079d84562-42a1f8a1-8700-49c1-8077-3dac3386caa3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d5302eef0b8f0be4c1e3fc786f663ed42cd72acaf82aa04eaee760356ca6b08
Date: Sat, 30 Apr 2022 09:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651311657
