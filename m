Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE47E7E2E
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B41C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663771253;
	bh=XieOeBC1FbcKyA3m4kYf82n20Ja3UG3v5Zlt3la47Z8=;
	h=To:Subject:From:Date:From;
	b=FeHAIdpsinO1d/7ScVYuz9EsX1iKwoNaxWQCmshgBpf1NjAQ1lvOcARimnH7cHJN2
	 GLWSXmivfZDK6hGEw54qbCKuc1RSzMyGtIV62okaqmMtbAGFyPzMn/XScQyKJnmu8p
	 Sa5WU1PDhJKYIc28fNKytZNUJqyvD+w53opp7BlZepd/Clt9QJdy/kzr1KZtgpWMN9
	 jTNG8Xl9htofa64B3RsNyQ/Kd9XGSPp/39hYYpSbHczAEeGHTJsTZUPycK9etN2JdV
	 bzmnRDISJshBbmvZ0yjUdNWNGGRAHvhP5kmP6wGSJNKbTCMbzlS2h+opAHAttLoZju
	 p/ok3UAMYrFsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58CA1ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166377125335.31264.3990133669506815659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb51dd870e51b33502f036d3cd6df1858a69e0a0d4f8dd2027257b8dbf53309
Date: Wed, 21 Sep 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663771253
