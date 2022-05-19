Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029A823D6
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 11:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652960759;
	h=To:Subject:From:Message-Id:Date;
	bh=vhOfF1A4tXaojNrRn4zHM6XPK1rtKOAbWqa+M5Zuaa0=;
	b=BXvXHSvi7Yq9VSraxmV2D4KuBMbjnIdINkqxZBp9GlaTl+c2eBx2LwjQeKCvIQLj
	5VC9Ie9kzqUEXnshDTTOBhnLYO3cuU2IEyycHko4FlSNUSiTfwoectU/Q/e7+oAtj+V
	LqT5597sUt0Z1GCITquP5gvUCE6dDmbuPjX29oNk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652960759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vhOfF1A4tXaojNrRn4zHM6XPK1rtKOAbWqa+M5Zuaa0=;
	b=b867/Bl4I/MZ3L8fQ1S4Zc2iQFpkhCie64W2dvgRxEXPEMCIwpZTdCLhsWtrJgC+
	/D0VVHotkcyVDyxh4c8KPgwXm/VDuV+24t4f52Mu9dHOlTZTL8m8TmhXc20Jrqni5O9
	tjdlTyLlcMvsHqt67LDFZv2lrL3ohwpxYTqfiakU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dc238ddc-ba9ad8ef-abcb-4a4d-aa3a-62a0a46dd19a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60850823d9eb4bf5a17146fc81576878b0b6f39652534b7f59507df86f9edc4d
Date: Thu, 19 May 2022 11:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652960759
