Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF245290C
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 15:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649864698;
	h=To:Subject:From:Message-Id:Date;
	bh=zsS6DZETWFD61eqPqbWBrpX9qwtflyUCcv0MKmG6g/4=;
	b=A17MDgOdLN3Ha2SwUwxczfrJEfcagJ8HzvuEuKQ9afZgx3Royy9RjT5xdngZ9wTi
	nDurXSlC8+umcoXSdUmHqLUSkfREF2ipL97t5jfJ1AlUdw1GnbxRlde/myOtJ7Pu6WA
	CjKtNI7Cm9FTz0oxkl/0/5Bsd1ps19bxjFuz1fdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649864698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zsS6DZETWFD61eqPqbWBrpX9qwtflyUCcv0MKmG6g/4=;
	b=NquQ9DghabGXWNyx0Tj4UPWAJI9YzgUTzfOqJIZUOMoAOceQvkYXFjCFk4BCMpz+
	F5EyDb877HqHBZAZfyHj6KHpDohIm3I2u+5Zz6wT9C5r23C0J167IaEXd1UOqMY7lsl
	RJlOCM1UqLexqUrZEbXcogJBfj2NwxmpYL2xAf8k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180239969ec-bc9d7b9b-b02b-427b-990a-e7427d1fa647-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c4e2e160d77c94d98440ce66278e07ed72c8cf461ad41b6f402a8a9a03b4db2
Date: Wed, 13 Apr 2022 15:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649864698
