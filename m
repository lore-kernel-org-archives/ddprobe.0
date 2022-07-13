Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7A415AA
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 02:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657679812;
	h=To:Subject:From:Message-Id:Date;
	bh=9Cv+vv1E1fbl6F7154ECieHf5Fi4fhisK5oW/3E+z2c=;
	b=JE/1fC4G8g0cInHvl2vnEQ/AV2Ex9mPkHefpHmkXftAuJWzPLqSvfJsdzylH4ESV
	elwiy5C9rXOq6ylLV3VIwuBkvT4QtIMLY04q7PhpiUPKhA+HE85CuZP5znp1Tvv9Lxn
	wCTfy96eyxS85jxM/eAJrpX9cS4fPQ43bK3G3jbQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657679812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9Cv+vv1E1fbl6F7154ECieHf5Fi4fhisK5oW/3E+z2c=;
	b=K80FhnuYTFqVYVdQ11AhrWxDg5OlzXWi0I8/n72WZwmu5j+UO7ERkk67jBkHJ6Ka
	TV/lG7MMRq6Y1j9WaPkzEXrjqASQe18XCnNLhR3EtVuMMGdfXCp8EEWnmc0nwluZMvf
	yEGwaPjP2nUcRWaC0Ij0RURaE8zCu77pSBnlJmYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f56a96c1-e056d0f5-1b0f-4189-9b19-7644ec7b82d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 545f860743b4882c94a484e6f7b0787e14073fa519fc1c2686de6d5d5849c6af
Date: Wed, 13 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657679812
