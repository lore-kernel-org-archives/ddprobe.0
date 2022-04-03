Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A23677A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 07:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648972679;
	h=To:Subject:From:Message-Id:Date;
	bh=fwZVPXqe68NJd+RCGTMQ8sfVz6ya+PZhbYSi7/j3xnI=;
	b=UlR5JaYbGg3/ndFLqkPFmiwy9m1XH7whs0tXdY3X0TwRqjx1tzuk4BrAA/nTATO5
	3Dgx8wBNwwlNhQwM6MQb9+coIPklPHPdO1zDWHNV20A5FLuy0vBieAJ0TV79+yp0EBD
	zgjoQ1ZujAl0AJS7Y9l91dm6ynrCEEktZP3zODJw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648972679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fwZVPXqe68NJd+RCGTMQ8sfVz6ya+PZhbYSi7/j3xnI=;
	b=TSTQqr6/DsJrXGDe8zibktSiCvofV/b45JAwTbK8jwLYMjs/HPBky5tnPAIYwcio
	89YmowAwNaVicgxzPQdvHjHVudjeby4HgJ4LuxVwSxsnZ8dv/WUuPMiAOaiwkDHPz+g
	Y12847F2KTtcnfeeCuC+BrvgLDgGQGepGXxS6Mks=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fee6e447f-4da526a5-d1c8-491e-b220-6762e4e5a9f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed90cff780c30ec5cf7f5ecbdbf71191d61f8d78b76a700a957ea2da3ecfcbc8
Date: Sun, 3 Apr 2022 07:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648972678
