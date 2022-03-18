Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380A215A9
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 10:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647599485;
	h=To:Subject:From:Message-Id:Date;
	bh=TFJ1ZFVBEBNUnn4FZ4lHK5tTzCNFklo4ZnBqRKI3cuw=;
	b=IFxmmy1IyotGbPlRf+oyCjDYxXb7LJ6dcOwrhEYH5VhCQKmVkCsfTCjeFMkvwvpN
	+biuee7PwdPgLaNyuv0dvzgP5/Y9WkCgqGNWWmDLD93bQjsOmWFLNBGWIF1y83sw0jw
	Zx/BmW38WshMpLu5jJtPGxlpfTRzMN7i5OYymOAA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647599485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TFJ1ZFVBEBNUnn4FZ4lHK5tTzCNFklo4ZnBqRKI3cuw=;
	b=jRKverRREwpr8ecy2vef5B2WupFEFMd6ntU6/2CntHfGcguyF9rwoDmLpqvk5d7h
	sqvoPDWrAJTrHYBGjVWaESVkD/wWbfedrcyV+YnsGbqnXh4oWkWZGpDUhcF3xwAUcQO
	ZEM0Z5KL06H+NANVaRBCWJcporWFe1RYISF9Ity4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c94ff15-ce467a7f-3524-446c-a11d-0d0147f378da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 707e5d1cf702183656d79f9446e850c023b7f5a060bd89a89fbc319c4349b990
Date: Fri, 18 Mar 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647599484
