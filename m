Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D7123BA
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 14:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651415638;
	h=To:Subject:From:Message-Id:Date;
	bh=iEUBn1EvgiqCV/3fU+5GAloTPqz1wWsNM4OaRRAkpco=;
	b=VzgoNShFVrYPp4Ro8e28EWp5bOoSsMCT5yr7k1FKscPdD8jLdyviJ2YJMUOrs5h/
	1SrjAMuVbT177360eO/ZkHfN1XwuqfjWOSSRVKyr+0SQ8Pvw/HWRrnn+doW9s9Q4zhu
	5kr1f2yfcUGc9yYmFqk6idfbOpR+qovJqpBXSnIo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651415638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iEUBn1EvgiqCV/3fU+5GAloTPqz1wWsNM4OaRRAkpco=;
	b=O7iQuYLN7UZ0Cx5NdfwZylA/9U4VOthJyasUotvZlZUL2xIu2kJzWmJ3ge2HlA+D
	Z5Wvj+BPJrC2+2pJZ1KIHVC3g/SkTGZSVdWcG8K7QQ7Anwuvfloal3FUtu/n1XxlAzO
	jGpubMjxTejToqKWc5SK02XIQJ7zmfKAUbby1Syo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180800ae107-e8c6834b-3a9d-4ad8-9785-937f52b1c57b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1e8c9fae7c2f6bbd15905b106022a4f016c7ad4c29137d47b3d5ff82b5cd4e3
Date: Sun, 1 May 2022 14:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651415638
