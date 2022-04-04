Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A273200
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 19:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649100298;
	h=To:Subject:From:Message-Id:Date;
	bh=nkrJ53Oc3WxFcyW09WtoTIXACJzQRUIAui5eAHI9VpI=;
	b=FCmC7FRw6eOWFufaHKw25AaRbSFLR4bO9T96OdJatSBPbvUD8rtUz6I+ZlZkB0sn
	z0JTjdZyRATp0BHgOAM3KjzOf04986paYgWj7uEw/3UBj0ltVwHuD0Jr3+xa0Pkf+n8
	FzubeqOINnPnV5yrzF52C59cvn/Us6Iqg+6tqutI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649100298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nkrJ53Oc3WxFcyW09WtoTIXACJzQRUIAui5eAHI9VpI=;
	b=YdaPWQTGxTF2Jh2I1tPhL+i8drAHyBgsACRsIocIGfVRzcHELouzZvBduyb5Up+M
	NnvqT4HP9DrY3UM4XeOtIu5h/QDZceTioFHO1iZERXKLnwBCF8BQwoTzusvwkjF9p+R
	3pqAzic+/og+8emCybKZgbarcA/T8aMersTSZEg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff6099832-cb1993dc-d481-42d2-a4cb-a24dd58c3ddd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16629df14eb73a744f35cbc5acf43fe7fb7d177a59d5d93f781c0cee90a9e07b
Date: Mon, 4 Apr 2022 19:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649100298
