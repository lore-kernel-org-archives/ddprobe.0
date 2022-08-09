Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668774685
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660076452;
	h=To:Subject:From:Message-Id:Date;
	bh=vaDbgk+SDLSKj4dEOKRwto3oPyNc0MXaO2UTJqOc780=;
	b=Ck4x7ZUp2fhwYUPhES2Bf0LJxyDjq4EjQPszmt5+6hQXYkKbqr34ACfGlqyHsy3I
	kAxYHJz8QIHu+zHu1FZHP9V3Xyohf8ecWIhbW75SAYFD9cX8OTWlslueh/uN4H+Y3bf
	8oWPJhnA6rPaRc+qblmzkSK8CPez3kwD7BkLM2MU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660076452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vaDbgk+SDLSKj4dEOKRwto3oPyNc0MXaO2UTJqOc780=;
	b=Qb6oQIxNcF7pK+OA+uayhPryDR6QbI8y5RTpYqneGdSJjw3E72kOqzUBNyZzUsmF
	5dQDUS6THyJuw5DRWEeDGn7fF46RMoc3k2n7ztR7uUU8/1dK4RVy1TMkFCsPl5iK6BS
	JyvAcUy2MlvUfnnG8DmoxrwoZ9QKYzi46Uu0g43g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018284446ae0-24183787-276b-4595-9776-3b9861843d90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3ce02d9a15b72aedf662e98370dc5559d097874a8c286d6c7434dd88db01e45
Date: Tue, 9 Aug 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660076452
