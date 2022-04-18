Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1FC1A29
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 16:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650300958;
	h=To:Subject:From:Message-Id:Date;
	bh=7IaygJZ253dJwWxtjLPxP9R3FRvBsJbazd28cmOTKMY=;
	b=YI3HlXTGmJLei4p0Yqy5sZlSjGJghSWg0qBIcYri6c9mlJX5E7VS8Gf7apaQY2YB
	6qwbtJQMD/skm+dNdl0FNl/ifEPBAITfbGShEbOhk3r55JYMWjTrCONi9NvlB2+cpK3
	pybNrohwV3HfWvaLr3R9+y0diRvttByLYqYyBpAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650300958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7IaygJZ253dJwWxtjLPxP9R3FRvBsJbazd28cmOTKMY=;
	b=D/oFwRydLcrVhC705+3aMZlxMxjk/YoFp1gm9dsmmQ4e4F+PaK1faeXM1Yu05Hhp
	7NvtBVo77+GG0OCdkmuEZXDUPwzxUq54GOqA+F1lCKeIdbotHvfoLdlAZyUWHgPR7Se
	sSKaAza+5QQ/1T/FefZ4ewha1s5FpHcyqOODbwsU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803d9a3673-b8bdca2f-cd2f-4e9d-b8dd-eeea885ab420-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8c211aff8ac090a50b51a07e9406f2ee026c2444b7373dd1912f03f5fe1fb88
Date: Mon, 18 Apr 2022 16:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650300958
