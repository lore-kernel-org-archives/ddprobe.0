Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F85110A
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 14:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652021638;
	h=To:Subject:From:Message-Id:Date;
	bh=oHscIa1MQR9Q+k2OaHKGO8vBZtCYAQX7btIrvdOqIt4=;
	b=INvHH46ntDrGeSziduNe+ajn8RpQhlA1crEfwwAv0Vk2Hr85uZBMi/HTDZXTChbx
	xUGvnfW9Rjz1AYiTnIw9JmaPCVPp6lXlwWW50epf6Mjqj3qLdpO6T6VJ7DDWEocs3YV
	Pw9g1sDo+Ov0L3rbNN3Wt2Tj6o4Nv1gliLZrGMc0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652021638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oHscIa1MQR9Q+k2OaHKGO8vBZtCYAQX7btIrvdOqIt4=;
	b=js7D+PCwok5gRtsuRlh0GHIiz2v4kaYMgk8+ds4vmz/ELfjHmnVGq6LY7PfZ/kH2
	pFZBdky8GSph57SXlQFvRmHOtMYf1eLtk8XsbyzO0lwhUTQSybU3KJMyobtErAaD1pb
	9e3pMSiKnoIJYK5oeY8YbD+cg9GZJ5JJWprySmz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a429b4a6-6c69a414-d8a0-4b82-9720-654b674dd5ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ec4e87ab655a4caf28af57e39007c8bda15f259a431f162e811724a09692850
Date: Sun, 8 May 2022 14:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652021638
