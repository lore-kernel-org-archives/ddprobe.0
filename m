Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4C7C5386
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660597853;
	h=To:Subject:From:Message-Id:Date;
	bh=AHC56I2ehIc85c+srmql9Vt6e1n+S86hFRyfUlEoD1I=;
	b=ez4VmbaHtQUQhtKD+yvrxyGa8uELm+6wawoUJIV44yaiqwNNy3ydFKpkUmu5Kz0u
	Eycx685uvfYuB4WSZjU6g4banYu6oos6F+Bjyb3zrwjcs24sK4/dLbh1XnwBqvu2/ds
	20Wcy5v4UrrjZRlTBz7+KjUGVw7xGsDwDOFK2xKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660597853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AHC56I2ehIc85c+srmql9Vt6e1n+S86hFRyfUlEoD1I=;
	b=i0ibETl5SW/n7D793sRIDrRK8JuMKUjnMTxGUO7MCUUiUHfX3p7L4NUcdL9VMJyQ
	1pF0JucQRJTOPDJEQrCFwE5pzUWKK4IqJ1FTg+dMcKRxlS7ncGQN2m3OHVxcHbjsgXO
	ejqlalHdSHkLi4HWLI4pK5LkiY5FVDwLkjwFGsKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a358597e-aa8c5993-c609-4cb3-8b78-1951023f0668-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 198bd23820096f65e30be4759a671128667132a88928151f6cbc351b2cef9329
Date: Mon, 15 Aug 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660597852
