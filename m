Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68C7806
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 12:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652616359;
	h=To:Subject:From:Message-Id:Date;
	bh=a6a3VRQK15l1dTWa2AwPzUVnUHjOGri6YgtjDJeO1e8=;
	b=cQLb1ipa6ao91r3WZIE8U173G6hkdM1YXI1f39ZdP+R/n99TEgZN2t3hRUnsdayW
	IyIpiV6ra+iUb0g/CeX7l57pgzug7IA8S9t9OYtFZhYczxjJvQfvo3gEOCefQqglpRn
	C89e8H1Hsn3PvyKajvyB+pTN9h968mjhpSUKTCV4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652616359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a6a3VRQK15l1dTWa2AwPzUVnUHjOGri6YgtjDJeO1e8=;
	b=TsXxJ/ZAtV9TShGF2IPaBGkKSrf/m2pQ+NIur/xkGvy1xUyN9NaBpvWEk+de4QjT
	F85gWb64/N/Hm8Q8nr5P4fdRmJ7D4SV9FxmaGH2NrSKPQYqDBQDOEbAZgppHZDfTQ2+
	eqOJE3eHxqP4NwpxLta7dFSo/DECtX0rxcCcmMxA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c79c6db0-3e26672c-8c79-4c41-9d6d-e2ece0d36618-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bf9e2b99760e3d09345da973f13921e99142a83cab89c87dbfc62b056baae34
Date: Sun, 15 May 2022 12:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652616359
