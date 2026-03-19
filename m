Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CDF34A790
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773914094; cv=none; b=I2tNNqpfclAwpqVXWuWCRGGZ3I+8NuX3fpMg+nVhz9Eh//gb5TiJJCu3bNDHn3lhbOqy+0Kr5vJL0zM8X8DG6FQaVn1Fa2SMGSh0JZqT8iwZBXiqX8MHlcWV7SxHhhX6+uc03a41B+H5dfsBQ0nSV3PBbyLX/hvZDh/9KUBPzxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773914094; c=relaxed/simple;
	bh=n+Arnf6HvmdkTxlY+0I2urYJXoQpzKshEeEwH+lGOm8=;
	h=To:Subject:From:Message-Id:Date; b=h+l7TJ3GeGjsqEd3VDcSP+cbPhNr6asI7TV2JovXEcWEOkqAnfSGklrPg0URBmQZlEUxhU6NZX8RNwF9TR/pJIul/Ur8RwsCjSA4XJsKws42Z9RckKrs9Ed+GGPk7G+BvJDdjcv+CZuItlVc3YJNlmYaRpdfe3zfesiSUvXQKT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOeisGR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOeisGR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5234C2BC87
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773914093;
	bh=n+Arnf6HvmdkTxlY+0I2urYJXoQpzKshEeEwH+lGOm8=;
	h=To:Subject:From:Date:From;
	b=aOeisGR1er4hIHG9KYrm/RLygGfGsQpi3vYrCo+WFP/xxGJXAdn9KnUdUCaO7LFp8
	 TvCA6eGddfM/2nTjce6aeaxoxISe8dnEqsVeCy8VZvuqjTRXgxU1+1OzAjZ5QiiGtx
	 BUbBYra5EFoCg5Q4dmg02uRvetMVD7HYAXrJgRYkXTxlsrupMC2JLD/dJOTKBZN66f
	 OzqeclbGBhXt7PQS0eMV7N1obQ81eI9lXjCDNhjram+CQz17nFVys+EGYj4r45W51N
	 pXu07xZD3pPCNVpjqqoQNYEa0j4C2FRyN/h1jF9pNEzSQjS+Cfm1VsOg46tbkeHbrd
	 fPXLlrKbycqcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949C5107528B
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177391409357.2630.1820235413603891388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ca90a133d6823c50302496c32d3e88db26304e7ee32fc59047df020209405d
Date: Thu, 19 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773914093
