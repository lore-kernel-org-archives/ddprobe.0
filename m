Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64FF033C2
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661106052;
	h=To:Subject:From:Message-Id:Date;
	bh=m6eEMPoFWfbyPtrK2X4Z/SIgQLcXhoeLfRhXZ4Tg/i8=;
	b=HuaOChXMu/NxHG/lkfXSscY4gsB2X829TfC5UCFDL595JM4pvr3VPs6egwX/7SCH
	el/ERFXFhkyF41P35jfgWn9sVXhq2fn52/EPzlH37Y9w5CenvLnOjBMVEZC7ssPyKS3
	7zjF3Iir+HckLBQ5IhC+3AExxN7AoIbRqSpobDYs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661106052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m6eEMPoFWfbyPtrK2X4Z/SIgQLcXhoeLfRhXZ4Tg/i8=;
	b=Hfm3FtRUdrOjUEzJC3WjfUazFJB/hpbr+haK4EJTczjthn77Q1v+f8PxojeJ1wbz
	Vjxjxa7PBNbdQQrYqdBjpm5URLMiM7M/TstPyMlPdNH6wMiCQIX1rQG4e3FUdJ3YG/S
	LNEZKicoVA9eWv5uA7cozAETPMgN1+p/6Mw/54Vo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c1a2ddc1-b5182d0a-bc89-4417-a5fd-dca2f952114c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aaa870d128e7406b98790c8b340843cea94ebe966befc807125f56cad5b0905e
Date: Sun, 21 Aug 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661106052
